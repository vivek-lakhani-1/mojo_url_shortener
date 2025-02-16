import storage
import utils

fn shorten_url(long_url: String) -> String:
    let short_code = utils.generate_short_code()
    let short_url = f"http://short.ly/{short_code}"
    storage.save_url(short_code, long_url)
    return short_url

fn retrieve_url(short_url: String) -> String:
    let short_code = short_url.replace("http://short.ly/", "")
    return storage.get_url(short_code)

fn list_urls():
    let urls = storage.load_urls()
    
    if urls.is_empty():
        print("📭 No URLs stored.")
    else:
        print("\n📋 Shortened URLs:\n")
        for short_code, long_url in urls.items():
            print(f"🔗 http://short.ly/{short_code} ➡ {long_url}")
