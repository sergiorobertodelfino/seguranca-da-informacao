# Importa o módulo Streamlit para criar interfaces web interativas em Python
import streamlit as st

# Importa a função format_decimal para formatar números com separadores e casas decimais no padrão brasileiro
from babel.numbers import format_decimal

# Importa o conector MySQL para Python, permitindo a conexão e execução de comandos no banco de dados MySQL
# pip install mysql-connector-python
import mysql.connector

# Define o título da aplicação na interface web
st.title("Exemplo de Tela com Procedimento")

# Cria um campo de entrada numérica para o usuário informar o valor de A
a = st.number_input("Qual o valor de A?")

# Cria um campo de entrada numérica para o usuário informar o valor de B
b = st.number_input("Qual o valor de B?")

# Dicionário contendo as configurações para conectar no banco de dados MySQL
config = {
    'user': 'sergio',            # Nome do usuário do banco de dados
    'password': 'q1w2e3r4',      # Senha do usuário
    'host': 'localhost',         # Endereço do servidor (localhost indica que está na mesma máquina)
    'database': 'fatec'          # Nome do banco de dados a ser utilizado
}

# Cria um botão "Somar" na interface. Se o usuário clicar, executa o bloco de código abaixo
if st.button("Somar"):
    # Estabelece conexão com o banco de dados utilizando as configurações fornecidas
    conn = mysql.connector.connect(**config)
    # Cria um cursor para executar comandos SQL no banco de dados
    cursor = conn.cursor()

    # Executa a procedure 'somar', passando os valores de entrada (a, b) e um valor inicial (0) para o parâmetro de saída
    resultado = cursor.callproc('somar', (a, b, 0))  # 0 é o valor inicial para o parâmetro de saída z

    # O resultado é uma tupla; o último elemento contém o valor retornado pelo parâmetro de saída (z)
    c = resultado[-1] 
    
    # Fecha o cursor para liberar recursos
    cursor.close()
    # Fecha a conexão com o banco de dados
    conn.close()

    # Formata o resultado para o padrão brasileiro (ex: 10,00) com 2 casas decimais
    cf = format_decimal(c, locale = "pt_BR", format = "0.00")
    
    # Exibe o resultado formatado na interface web
    st.write(f"O valor de C é {cf}")