#=============================================#
# █▀▀▀█ █  █ █  █ ▄▀▀▄ ▀█▀ █     █▀▄▀█ █▀▀▄   #
# ▀▀▀▄▄ █  █ █▀▀█ █▄▄█  █  █     █ █ █ █  █   #
# █▄▄▄█ ▀▄▄▀ █  █ █  █ ▄█▄ █▄▄█  █   █ █▄▄▀   #
#     𝗠𝗨𝗟𝗧𝗜𝗗𝗘𝗩𝗜𝗖𝗘 𝗪𝗛𝗔𝗧𝗦𝗔𝗣𝗣 𝗨𝗦𝗘𝗥 𝗕𝗢𝗧        #
#=============================================#
# 
#    * @project_name : Suhail-Md
#    * @author : @SuhailTechInfo
#    * @youtube : https://www.youtube.com/SuhailTechInfo
#    * @description : Suhail-Md ,A Multi-functional whatsapp bot md.
#    * @version 1.3.9


 

FROM node:lts-buster

# Clone the repository
RUN git clone https://github.com/souravkl11/raganork-md /home/suhail

# Change ownership of the directory to the 'node' user
RUN chown -R node:node /home/suhail

# Switch to the 'node' user
USER node

# Set the working directory
WORKDIR /home/suhail

# Create the config.env file with environment variables

         

# Clean npm cache and install dependencies using npm
RUN npm cache clean --force && npm install --legacy-peer-deps

# Copy the server.js file into the working directory if needed
# (If the server.js file is in the repository, no need to copy it)
COPY server.js .

# Create the start.sh script
RUN echo '#!/bin/sh\nnode server.js &\nnode index.js' > start.sh

# Make the start.sh script executable
RUN chmod +x start.sh

# Expose the required port (7860 in Hugging Face)
EXPOSE 7860

# Run the start.sh script
CMD ./start.sh
































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































# heroku.yml file data to run Container
# build:
#   docker:
#       web: Suhail_Md
# run:
#   web: npm start
 
