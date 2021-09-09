# TTPS - TDD prácticas

Este repositorio provee las pruebas para verificar el desarrollo de los
ejercicios de las prácticas de la materia. Para ello, la cátedra provee los tests
que deben pasar y los alumnos deberán desarrollar las soluciones siguiendo las
instrucciones provistas.

La idea es poder introducir la práctica TDD que no es el desarrollo de tests,
sino dirigir el desarrollo de software usando tests para así promover un cambio
cultural, ganar en calidad del código, minimizar la cohesión y maximizar la
seguridad a la hora de introducir cambios, sabiendo que todo sigue funcionando.

## Organización del repositorio

El repositorio cuenta con un archivo [`main.rb`](./main.rb) que sirve para
cargar todas las resoluciones desarrolladas, y de esta forma, poder utilizar
una consola de ruby (irb) que les permitirá experimentar mientras desarrollan.
Igualmente la validación real de una solución adecuada de los ejercicios será
corriendo los tests provistos en este repositorio.

El directorio [`src/`](./src) es donde existen los archivos que se corresponden
con cada ejercicio de las prácticas que deberían implementar. Es importante seguir
la convención mencionada en la práctica, como por ejemplo el nombre del método a
implemetar.

El directorio [`tests/`](./tests) es donde implementamos los test que
verificarán la correcta implementación de cada ejercicio bajo el directorio
`src/`.

Dentro de estos dos directorios (`src` y `tests`), hay un subdirectorio por cada
práctica de la materia, para agrupar los ejercicios. Es en esos subdirectorios que
se ubicarán los fuentes de las resoluciones de los ejercicios (dentro de `src`) y
sus tests (dentro de `tests`).

## Uso

Para usar este repositorio, simplemente se debe tener instalado ruby,
unas dependencias y utilizar los comandos indicados según sea el caso.

Para instalar las dependencias:

```bash
gem install bundler
bundle
```
> Las dependencias serán requisito únicamente para correr los tests. La consola
> de ruby no necesita dependencias.

### Uso de la consola de ruby

El siguiente comando cargará una consola de ruby con las implementaciones que se
hayan desarrollado dentro del directorio `src/`. Si las implementaciones se han
realizado, entonces estarán disponibles en la consola para su uso.

```bash
irb -I. -r main.rb
```

> La consola no tomará modificaciones que se realicen en el código una
> vez abierta la consola. Por ello, si se realizan modificaciones en el
> código bajo el directorio `src/` mientars se esté usando la consola, cualquier
> cambio requiere reiniciar la consola para que sea visible.

### Correr los tests

Los tests se corren usando:

```bash
rake
```

> El comando correrá un linter llamado [rubocop](https://rubocop.org/), los
> tests definidos usando [minitest](https://docs.seattlerb.org/minitest/) y
> analizará la cobertura de los tests con [simplecov](https://github.com/simplecov-ruby/simplecov)

El comando anterior correrá todos los tests en la carpeta `tests/` y analizará
la cobertura de las implementaciones en el directorio `src/` como así también la
correcta codificación de todo código ruby del proyecto.

Para correr por separado las tareas es posible:

```bash
rake -T       # Muestra todas las tareas
rake rubocop  # Corre el linter
rake test     # Corre los tests
```

Si se desea correr únicamente un test de los provistos, es posible usar el
nombre del archivo del test únicamente, por ejemplo:

```bash
rake test TEST=tests/06_tiempo_en_palabras_test.rb
```

### Analizando la cobertura de los tests

Cada vez que se corren los tests, se genera una carpeta en el repositorio, que
no es versionable llamada `coverage/`. En esa carpeta, se generan varios
archivos:

* **`index.html`**: pueden visualizarlo usando `xdg-open coverage/index.html`
* **`.last_run.json`**: los resultados resumidos de la última corrida en formato
  json.
