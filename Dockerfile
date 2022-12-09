#nombre de la stage es 'stage1'
FROM node:latest as stage1

# directorio de trabajo
WORKDIR /usr/app

#copiamos el package.json
COPY ./package.json ./

#ejecutamos npm install para hacer la instalación de componentes
RUN npm install

# copiamos todo el directorio
COPY . .

#ejecutamos "run build" para crear la app react
RUN npm run build

#De la imagen de nginx
FROM nginx

#copiamos del paso anterior llamado "stage1" la carpeta del build
#en la carpeta html de nginx
COPY --from=stage1 /usr/app/build /usr/share/nginx/html
# para crear la imagen ejecutar:
# docker build -t pea/reactprofinal .
#para ejecutar el contenedor
#docker run -p 80:80 pea/reactprofinal
