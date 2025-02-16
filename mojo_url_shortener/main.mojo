import shortener
import utils

fn main():
    print("\n🔗 Mojo URL Shortener\n")

    while True:
        print("\nOptions:")
        print("1. Shorten URL")
        print("2. Retrieve Original URL")
        print("3. List All Shortened URLs")
        print("4. Exit")

        let choice = utils.get_input("Choose an option (1-4): ").strip()

        if choice == "1":
            let long_url = utils.get_input("Enter the long URL: ").strip()
            let short_url = shortener.shorten_url(long_url)
            print(f"✅ Shortened URL: {short_url}")
        elif choice == "2":
            let short_url = utils.get_input("Enter the short URL: ").strip()
            let original = shortener.retrieve_url(short_url)
            if original:
                print(f"🔗 Original URL: {original}")
            else:
                print("❌ URL not found!")
        elif choice == "3":
            shortener.list_urls()
        elif choice == "4":
            print("\n👋 Exiting Mojo URL Shortener. Goodbye!\n")
            break
        else:
            print("❌ Invalid option. Try again.")

main()
