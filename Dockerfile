# Use a base image with Java and Tomcat
FROM tomcat:latest

# Set the maintainer
LABEL maintainer="shufai"

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your own ROOT.war file to the Tomcat webapps directory
COPY ./*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]
