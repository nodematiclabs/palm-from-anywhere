API_ENDPOINT="us-central1-aiplatform.googleapis.com"
PROJECT_ID="YOUR PROJECT HERE"
MODEL_ID="text-bison@001"

curl \
-X POST \
-H "Authorization: Bearer $(gcloud auth print-access-token)" \
-H "Content-Type: application/json" \
"https://${API_ENDPOINT}/v1/projects/${PROJECT_ID}/locations/us-central1/publishers/google/models/${MODEL_ID}:predict" -d \
$'{
  "instances": [
    {
      "content": "What are the best ingredients for a smoothie?"
    }
  ],
  "parameters": {
    "temperature": 0.2,
    "maxOutputTokens": 256,
    "topP": 0.8,
    "topK": 40
  }
}'