import streamlit 
from babel.numbers import format_decimal

streamlit.title("Calculadora")

a = streamlit.number_input("Digite o valor de A: ")
b = streamlit.number_input("Digite o valor de B: ")

if streamlit.button("Somar"):
    c = a + b
    cf = format_decimal(c, locale = "pt_BR", format = "0.00")
    streamlit.write(f"O valor de C é {cf}")