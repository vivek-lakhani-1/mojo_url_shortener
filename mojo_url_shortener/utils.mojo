import random

fn get_input(prompt: String) -> String:
    print(prompt, end="")
    let user_input = input()
    return user_input.strip()

fn generate_short_code() -> String:
    let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let short_code = "".join([characters[random.randint(0, characters.size() - 1)] for _ in range(6)])
    return short_code
