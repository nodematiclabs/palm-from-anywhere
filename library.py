from langchain.llms import VertexAI

google_llm = VertexAI()

print(
    google_llm("What are the best ingredients for a smoothie?")
)