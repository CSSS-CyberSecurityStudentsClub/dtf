FROM ubuntu:latest

RUN apt update && apt install -y bash

RUN useradd -ms /bin/bash participant

COPY ./levels/ /home/participant/levels/
COPY ./setup_scripts/ /setup_scripts/
COPY ./setup.sh /setup.sh

RUN chmod +x /setup.sh && /setup.sh

# 🔥 IMPORTANT fix here
RUN chown -R participant:participant /home/participant

USER participant

WORKDIR /home/participant

CMD ["/bin/bash"]
