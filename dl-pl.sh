# param 1 is playlist URL
# param 2 is output folder name
# Param 3 is the starting index of the playlist

cd yt_dlp

python __main__.py \
--no-check-certificate \
--sub-lang en,zh-Hans,zh-Hant,ja,ko,fr,de,it,es,pt-BR,ru,ar,id,hi \
--convert-subs srt \
--playlist-start $3 \
--sleep-interval 40 \
--cookies cookies.txt \
--user-agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36" \
--add-header "Accept-Language: en-US,en;q=0.9" \
-f best \
-v \
-o "../output/$2/%(playlist_index)s_%(title)s.%(ext)s" \
"$1"

#./dl-pl.sh "https://www.youtube.com/playlist?list=PLl4APkPHzsUUOkOv3i62UidrLmSB8DcGC" "K8s/CKAD-series" 54
