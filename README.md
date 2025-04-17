# 1. Clone your repo
git clone https://github.com/exitdump/antlr-ts-logic-evaluator.git
cd antlr-ts-logic-evaluator

# 2. Initialize project
npm init -y
npm install antlr4ts --save
npm install ts-node typescript --save-dev

# 3. Add your Logic.g4 grammar in /grammar
# 4. Generate parser & lexer:
npx antlr4ts -visitor -o src/parser grammar/Logic.g4

# 5. Run sample
npx ts-node src/index.ts
