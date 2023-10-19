# Дистрибутив базового образа
FROM python:3.7.2

# Контактная информация
LABEL maintainer="sp8997778@gmail.com" \
      description="python:v3.7.2 for simple-django-project"

# Значение переменной при запуске скрипта
ARG PROJECT_V

# Установка, создание и активация виртуальной среды
RUN pip install virtualenv \
    && mkdir /envs \
    && virtualenv /envs/ \
    && . /envs/bin/activate

# Клонирование Git репозитория
RUN git clone --branch=deploy --single-branch http://github.com/SergeiPetkov/simple-django-project.git

# Установка рабочей директории
WORKDIR /simple-django-project

# Переход к определенной версии проекта
RUN git checkout $PROJECT_V

# Обновления необходимые перед установкой зависимостей (ошибка You should consider upgrading via the 'pip install --upgrade pip' command.)
RUN pip install --upgrade setuptools \
    && pip install --upgrade pip

# Установка всех зависимостей из requirements.txt
RUN pip install -r requirements.txt

# Режим ожидания
CMD ["sleep", "infinity"]

