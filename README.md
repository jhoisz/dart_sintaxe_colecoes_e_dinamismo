<h1 align="center"> Dart: sintaxe, coleções e dinamismo 🎐 </h1>

## ℹ️ Sobre

Conteúdo estudado no curso [Dart: sintaxe, coleções e dinamismo](https://cursos.alura.com.br/course/dart-sintaxe-colecoes-dinamismo), ensinado pelo instrutor [Ricarth Lima](https://cursos.alura.com.br/user/ricarth-lima) na plataforma **[Alura](https://www.alura.com.br/)**.

## 📌 Assuntos

- **Sintaxe:** Como usar a os conceitos de sintaxe do Dart em um código assertivo;
- `enum`: Como criar um Enumerador, para tornar as comparações mais legíveis e eficientes;
- `switch`: Como usar a estrutra condicional Switch-Case para comparações;
- `set`: Como usar uma coleção que se comporta como uma lista onde os elementos não se repetem;
- `map`: Como usar uma coleção na estrutura de "chave" e "valor";
- `_`: Como tornar privada uma propriedade de uma classe;
- `get`: Como criar um Getter de acesso à propriedades privadas;
- `set`: Como criar um Setter para modificação de propriedades privadas.

## ➡️ Sintaxe

**Sintaxe** são normas de uma linguagem de ditam como deve ser escrita (ordem e como deve ser escrito) e palavras chaves/reservadas.

**Semântica** se trata da lógica, devendo sempre ser não-ambígua.

> [_A tour to the Dart language_](https://dart.dev/guides/language/language-tour)

## ➡️ Enum e Switch Case

Enums (enumeradores) são tipos de dados identificadores que são criados por nós. Exemplo de transportes:

```dart
enum Transporte {
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem,
}
```

Switch Case é uma estrutura condicional que compara um elemento com determinadas opções e executa uma instrução para a entrada compatível.

```dart
switch (locomocao) {
    case Transporte.bike:
        print("Vou de BIKE para a aventura!");
        break;
    case Transporte.carro:
        print("Vou de CARRO para a aventura!");
        break;
    default:
        print("Vou para a aventura");
        break;
}
```

## ➡️ Set

Set é um conjunto que não pode possuir elementos repetidos.

```dart
Set<String> registrosVisitados = <String>{};
```

> ⚠️ Iterable é uma classe abstrada que é implementada tanto por `set` quanto por `list`.

## ➡️ Map

Um map é uma estrutura que possui um conjunto de chaves e um valores, bastante utilizado no consumo de _APIs_, por exemplo.

```dart
//MAP:
Map<String, double> registrarPrecos = {};

// criando e atribuindo
registrarPrecos["São Paulo"] = 1200;
registrarPrecos["Rio de Janeiro"] = 1500;

print(registrarPrecos);

// verirficando valores com a chave
print(registrarPrecos["São Paulo"]);
print(registrarPrecos["Tocantins"]);

// Deletando
registrarPrecos.remove("São Paulo");
print(registrarPrecos);
```

> ✨ Sobre o [`list`](https://github.com/jhoisz/Dart_listas) no Dart.

## ➡️ Dynamic

`Dynamic` é um tipo de variável que mesmo após ser atribuído o tipo, ainda pode ser alterada em tempo de execução (diferente do tipo `var` que após o tipo ser definido não pode mais mudar).

## ➡️ Variável estática

Uma variável do tipo `static` criada dentro de uma classe pode ser acessada mesmo que o objeto desta classe ainda não tenha sido instanciado. Por exemplo:

```dart
void main() {
  print(Viagem.codigoTrabalho);
}

class Viagem {
  static String codigoTrabalho = "CODIGOQUALQUER";
}
```

## ➡️ Encapsulamento

Utilizando o encapsulamento gerenciamos permissões dentro do códido, dessa maneira os dados podem ser públicos ou privados. Exemplo de `getter` e `setter`, usados para buscar e setar um dado privado dentro de uma classe, respectivamente.

> `Getter`

```dart
int get consultarTotalLocaisVisitados {
    return _totalLocaisVisitados;
}
```

> `Setter`

```dart
set alterarLocaisVisitados(int novaQnt) {
    novaQnt < 10 ? _totalLocaisVisitados = novaQnt : print("Não é possível.");
}
```

## ▶️ Como executar

Para executar qualquer um dos códigos você pode clonar o repositório, abrir a pasta do projeto e executar o arquivo `.dart`:

```
git clone https://github.com/jhoisz/Dart_OO
cd Dart_OO/bin
dart nomeDoCodigo.dart
```

<!-- A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`. -->
