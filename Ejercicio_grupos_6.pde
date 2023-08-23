import java.util.List;
class Libro {

    String titulo;

    String autor;

    float x, y;

    float ancho = 100;

    float alto = 40;

    Libro(String titulo, String autor, float x, float y) {

        this.titulo = titulo;

        this.autor = autor;

        this.x = x;

        this.y = y;
    }

    void mostrar() {

        fill(200, 200, 0);

        rect(x, y, ancho, alto);

        fill(0);

        text(titulo, x + 10, y + 20);

    }
    boolean estaClickeado() {

        return mouseX > x && mouseX < x + ancho && mouseY > y && mouseY < y + alto;

    }
    void clic() {

        if (estaClickeado()) {

            println("Clic en el libro: " + titulo + " de " + autor);

            // Agrega aquí los métodos que desees que se activen al hacer clic en un libro

        }

    }

}

class Biblioteca {

    List<Libro> libros;

 

    Biblioteca() {

        libros = new ArrayList<>();

    }

 

    void agregarLibro(Libro libro) {

        libros.add(libro);

    }

 

    void mostrarLibros() {

        for (Libro libro : libros) {

            libro.mostrar();

        }

    }

 

    void revisarClicks() {

        for (Libro libro : libros) {

            libro.clic();

        }

    }

}

 

Biblioteca biblioteca;

 

void setup() {

    size(800, 400);

    biblioteca = new Biblioteca();

 

    Libro libro1 = new Libro("El Gran Gatsby", "F. Scott Fitzgerald", 100, 100);

    Libro libro2 = new Libro("1984", "George Orwell", 300, 100);

 

    biblioteca.agregarLibro(libro1);

    biblioteca.agregarLibro(libro2);

}

void draw() {

    background(255);

    biblioteca.mostrarLibros();

}

void mouseClicked() {

    biblioteca.revisarClicks();

}
