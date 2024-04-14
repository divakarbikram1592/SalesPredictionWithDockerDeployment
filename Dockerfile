#Mention the base image 
FROM python:3.9-slim



#Copy the current folder structure and content to docker folder
COPY . /Users/apple/Documents/Project-Docker/app

#Set current working directory
WORKDIR /Users/apple/Documents/Project-Docker/app

#Install the required libraries
RUN pip install -r requirements.txt

#Expose the port within docker
EXPOSE 8080
ENV PORT=8080

#container start up command
#CMD ["python", "-m", "flask_api"]
#CMD ["python", "flask_api.py", "runserver", "0.0.0.0:8080"]
#CMD ["python", "flask_api.py"]
