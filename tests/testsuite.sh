docker build -t somatic/neural-style .
docker run -d -p 5000:5000 somatic/neural-style  python /home/ubuntu/somaticagent/web.py -s
curl --fail -X POST -F input_image=@input.jpg -F content_image=@content.jpg -F output_image=blah.jpg -F gpu=-1 http://127.0.0.1:5000/run
