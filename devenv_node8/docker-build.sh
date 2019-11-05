imageName="devenv_node8"
docker image build --tag "${imageName}:latest"  - < Dockerfile

# Create a container using this image
echo "Would you like you create a container with this image? [y/n]";
read createContainer

if [[ "${createContainer}" == "y" ]] || [[ "${createContainer}" == "Y" ]]
then
	echo "Please enter the name of the container:";
	read containerName;
	echo "Please enter the root folder of your workspace:"
	read workspaceRoot;
	docker run -it --name="${containerName}" -v "${workspaceRoot}/projects":/projects "${imageName}" /bin/bash
	echo "Successfully created container with name \"${containerName}\""
else
	echo "Successfully built image \"${imageName}\""
fi