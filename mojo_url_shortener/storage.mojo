import config

fn save_url(short_code: String, long_url: String):
    let file = open(config.URL_FILE, "a")
    file.write(f"{short_code},{long_url}\n")
    file.close()

fn get_url(short_code: String) -> String:
    let file = open(config.URL_FILE, "r")
    let lines = file.read_lines()
    file.close()

    for line in lines:
        let parts = line.strip().split(",")
        if parts.size() == 2 and parts[0] == short_code:
            return parts[1]
    
    return ""

fn load_urls() -> Dictionary[String, String]:
    let urls: Dictionary[String, String] = {}
    
    let file = open(config.URL_FILE, "r")
    let lines = file.read_lines()
    file.close()

    for line in lines:
        let parts = line.strip().split(",")
        if parts.size() == 2:
            urls[parts[0]] = parts[1]

    return urls
