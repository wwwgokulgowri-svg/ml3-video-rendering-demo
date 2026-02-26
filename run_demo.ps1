# Merge audio + video
ffmpeg -y -i "inputs\6952856-uhd_4096_2160_25fps.mp4" -i "inputs\audio_realistic.mp3" `
-map 0:v:0 -map 1:a:0 `
-c:v libx264 -preset veryfast -crf 23 `
-c:a aac -b:a 192k -shortest `
"output\final_demo.mp4"

Write-Host "Demo completed. Output saved in output\final_demo.mp4"