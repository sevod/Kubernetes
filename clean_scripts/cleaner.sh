# Небольшой скрипт для освобождения места, в моем случае, самым жадным, до места, приложением оказался слак.
# Сохраняете в файл с расширением .sh и запускаете его командой sh файлнейм.sh
# aarcelia 31.10.2020 at 9:44 AM Ivan Nikulin +79312041589

rm -rf ~/Library/Caches/
rm -rf ~/Library/*42_cache*
rm -rf ~/Library/Application\ Support/Slack/Service\ Worker/CacheStorage/
rm -rf ~/Library/Application\ Support/Slack/Cache/
rm -rf ~/Library/Application\ Support/Slack/Code\ Cache/
rm -rf ~/Library/Application\ Support/Code/Cache
rm -rf ~/Library/Application\ Support/Code/CachedData
rm -rf ~/Library/Application\ Support/Code/CachedExtension
rm -rf ~/Library/Application\ Support/Code/CachedExtensionVSIXs
rm -rf ~/Library/Application\ Support/Spotify/PersistentCache
