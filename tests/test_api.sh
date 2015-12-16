#docker build -t somatic/neural-style .
docker run  -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY"  -d -p 5000:5000 somatic/neural-style python /home/ubuntu/somaticagent/web.py -s
sleep 1
curl --fail -X POST -F style_image=@tests/starry.jpg -F content_image=@tests/slawek.jpg -F output_image=blah.jpg -F gpu=-1 -F num_iterations=2 http://127.0.0.1:5000/run
docker run  -e "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" -e "AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY"  -t -p 5000:5000 somatic/neural-style python /home/ubuntu/somaticagent/apitester.py -n 3
