# Používanie minimálneho Ubuntu obrazu
FROM ubuntu:20.04

# Nastavenie premenných na non-interactive režim (zabraňuje výzvam počas inštalácie)
ENV DEBIAN_FRONTEND=noninteractive

# Aktualizácia a odstránenie dočasných balíčkov na minimalizáciu obrazu
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y mosquitto && \
    apt-get install -y net-tools && \
    apt-get install -y --no-install-recommends \
    curl \
    ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
	
# Skopírujte konfiguračný súbor Mosquitto do kontajnera
# COPY mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY mosquitto.conf /mosquitto/config/mosquitto.conf
COPY passwordfile /mosquitto/config/passwordfile

RUN mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log
RUN touch /mosquitto/log/mosquitto.log
#RUN chmod -R 777 /mosquitto/log
RUN chown -R mosquitto:mosquitto /mosquitto
RUN chmod 600 /mosquitto/config/passwordfile


RUN ls -laR /mosquitto/*

# Definovanie pracovného adresára (voliteľné)
# WORKDIR /mosquitto

# Otvorte porty pre MQTT a WebSocket (ak je potrebné)
# EXPOSE 1883 9001
EXPOSE 1883

# Spustite Mosquitto broker
CMD ["mosquitto", "-c", "/mosquitto/config/mosquitto.conf", "-v"]

# Pridanie základného príkazu (voliteľné)
# CMD ["/bin/bash"]
# CMD ["mosquitto"]
