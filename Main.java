import java.io.*;

public class Main {
    public static void main(String[] args) {
        try {
            // Cria um BufferedReader para ler o arquivo entrada.txt
            BufferedReader reader = new BufferedReader(new FileReader("entrada.txt"));
            scanner scanner = new scanner(reader);  // Usa o scanner para ler tokens do arquivo
            parser parser = new parser(scanner);    // Passa o scanner para o parser

            System.out.println("Processing input from entrada.txt:");

            String line;
            while ((line = reader.readLine()) != null) {
                // Feed input from the file to the scanner
                scanner.yyreset(new StringReader(line));
                parser.parse();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
