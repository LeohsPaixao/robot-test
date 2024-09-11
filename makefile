# Variáveis para os caminhos
TESTS_DIR = tests/test_cases         # Diretório dos testes
OUTPUT_DIR = results/reports      # Diretório onde os resultados serão salvos
ARG_FILE = args.robotargs # Arquivo de argumentos opcional

# Alvo padrão: Executar os testes
.PHONY: test
test: clean
	@echo "Executando testes com Robot Framework..."
	robot --outputdir $(OUTPUT_DIR) $(TESTS_DIR)

# Alvo para limpar os relatórios antigos
.PHONY: clean
clean:
	@echo "Limpando o diretório de resultados..."
	@rm -rf $(OUTPUT_DIR)
	@mkdir -p $(OUTPUT_DIR)

# Alvo para executar testes com um arquivo de argumentos
.PHONY: test-args
test-args: clean
	@echo "Executando testes com Robot Framework usando arquivo de argumentos..."
	robot --outputdir $(OUTPUT_DIR) -A $(ARG_FILE) $(TESTS_DIR)

# Alvo de ajuda
.PHONY: help
help:
	@echo "Comandos disponíveis:"
	@echo "  make test         - Executa os testes e salva os relatórios em $(OUTPUT_DIR)"
	@echo "  make clean        - Limpa os relatórios antigos"
	@echo "  make test-args    - Executa os testes usando o arquivo de argumentos $(ARG_FILE)"
