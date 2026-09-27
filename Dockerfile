FROM osrf/ros:jazzy-desktop-full
WORKDIR /~/ros_ws


RUN apt-get update && apt-get install -y --no-install-recommends python3-colcon-common-extensions

# add sourcing command to shell startup to avoid sourcing every time
RUN echo source /opt/ros/$ROS_DISTRO/setup.bash >> ~/.bashrc

# add the src folder into the docker image
ADD src/ ./src

EXPOSE 8888/udp

