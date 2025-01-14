# Používanie minimálneho Ubuntu obrazu
FROM ubuntu:20.04

# Nastavenie premenných na non-interactive režim (zabraňuje výzvam počas inštalácie)
ENV DEBIAN_FRONTEND=noninteractive

# Aktualizácia a odstránenie dočasných balíčkov na minimalizáciu obrazu
RUN apt-get update && \
    apt-get upgrade -y && \
	apt-get install mosquitto && \
    apt-get install -y --no-install-recommends \
    curl \
    ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Definovanie pracovného adresára (voliteľné)
WORKDIR /app

# Pridanie základného príkazu (voliteľné)
# CMD ["/bin/bash"]
CMD ["mosquitto"]
