# ubuntu-containter-base-image
Change username and passsword within the file. 
build the image with 
 docker run IMAGE_NAME -p22:22
 
Deploy with:
 docker run -it -d -p222:22 --name C_NAME D_IMAGE
Change -p222 to what ever you want it to be, change C_NAME to what you want and then D_IMAGE to the image you created
