#pragma once

#include <functional>
#include <sstream>

class try_catcher final
{
    std::stringstream accumulated_messages_;

public:
    explicit try_catcher() = default;

    auto add_message(const std::string& message) -> void
    {
        accumulated_messages_ << message << std::endl;
    }

    auto try(const std::function<void()>& function_to_call_in_try_catch_block_and_accumulate_any_exception_message) -> void
    {
        try
        {
            function_to_call_in_try_catch_block_and_accumulate_any_exception_message();
        }
        catch (const std::exception& e)
        {
            accumulated_messages_ << std::string(e.what()) << '\n';
        }
        catch (...) // COM errors or other exception types.
        {
            accumulated_messages_ << std::string("Unknown exception.") << '\n';
        }
    }

    ~try_catcher() noexcept(false) // NOTE: Throws from a destructor, so be sure to catch it!
    {
        const auto message = get_message();

        if (!message.empty())
        {
            throw std::runtime_error(message);
        }
    }

    [[nodiscard]] auto get_message() const -> std::string
    {
        const auto accumulated_messages_including_trailing_newline = accumulated_messages_.str();

        return accumulated_messages_including_trailing_newline.substr(0, accumulated_messages_including_trailing_newline.length() - 1); // Trim trailing newline
    }
};
