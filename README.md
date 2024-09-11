# Robot Framework Test Project

Este projeto é um conjunto de testes automatizados utilizando o Robot Framework para validar funcionalidades do site [The Internet](https://the-internet.herokuapp.com/).

## Tecnologias Utilizadas

- **Python**: 3.10.14
- **Robot Framework**: 7.1
- **SeleniumLibrary**: Utilizada para automação de testes web
- **Browser**: Chrome (executando em modo headless)

## Estrutura do Projeto

- `tests/test_cases`: Contém os arquivos de teste organizados por funcionalidades.
- `resources`: Contém arquivos de recursos e keywords reutilizáveis.
- `variables`: Contém variáveis de configuração e parâmetros usados nos testes.
- `results/reports`: Diretório onde os relatórios de execução são salvos.

## Pré-requisitos

Certifique-se de ter o Python instalado na versão correta. Recomenda-se o uso de um ambiente virtual para gerenciar as dependências do projeto.

## Instalação

1. Clone este repositório:

   ```bash
   git clone https://github.com/LeohsPaixao/robot-test.git
   ```

2. Navegue até o diretório do projeto:

   ```bash
   cd robot-test
   ```

3. Crie um ambiente virtual e ative-o:

   ```bash
   python -m venv venv
   source venv/bin/activate  # No Windows use: venv\Scripts\activate
   ```

4. Instale as dependências:

   ```bash
   pip install -r requirements.txt
   ```

   Se não houver um arquivo `requirements.txt`, instale o Robot Framework e Selenium Library manualmente:

   ```bash
   pip install robotframework
   pip install robotframework-seleniumlibrary
   ```

## Como Executar os Testes

### Executar Todos os Testes

Para rodar todos os testes e gerar relatórios no diretório `results/reports`:

```bash
make test-all
```

### Executar Testes com Arquivo de Argumentos

Para rodar testes usando um arquivo de argumentos específico:

```bash
make test-args
```

### Executar Testes com Tags

Para executar testes específicos usando tags:

```bash
make test-tag TAG=ElementTest01
```

### Limpar Relatórios Anteriores

Para limpar os relatórios antigos:

```bash
make clean
```

## Observações

- **Modo Headless**: Os testes são executados em modo headless, o que significa que não há interface gráfica durante a execução. Isso é configurado diretamente nos argumentos do Selenium no código de teste.
- **Configurando Browsers Diferentes**: O projeto está configurado para o Chrome, mas pode ser adaptado para outros navegadores ajustando as configurações do Selenium.

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

Feito com ❤️ por [Leonardo Paixão](https://github.com/LeohsPaixao)
