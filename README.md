# ANTLR TypeScript Logic Evaluator

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![TypeScript](https://img.shields.io/badge/TypeScript-5.8.3-blue.svg)](https://www.typescriptlang.org/)
[![ANTLR4](https://img.shields.io/badge/ANTLR4-0.5.0-orange.svg)](https://www.antlr.org/)

A powerful logic expression evaluator built with ANTLR4 and TypeScript, allowing you to parse and evaluate logical expressions with ease.

## 🚀 Features

- Parse logical expressions using ANTLR4 grammar
- TypeScript-based implementation for type safety
- Extensible grammar system
- Visitor pattern implementation
- Easy-to-use API

## 📋 Prerequisites

- Node.js (Latest LTS version recommended)
- npm (Node Package Manager)
- Basic understanding of ANTLR4 grammar

## 🛠️ Installation

1. Clone the repository:
```bash
git clone https://github.com/exitdump/antlr-ts-logic-evaluator.git
```

2. Navigate to the project directory:
```bash
cd antlr-ts-logic-evaluator
```

3. Install dependencies:
```bash
npm install
```

## 🔧 Setup and Configuration

1. Add your grammar:
   - Navigate to the `/grammar` directory
   - Create or modify `Logic.g4` file with your ANTLR4 grammar rules

2. Generate parser and lexer:
```bash
npx antlr4ts -visitor -o src/parser grammar/Logic.g4
```

3. Run the sample:
```bash
npx ts-node src/index.ts
```

## 🎯 Usage

After setting up the project, you can use it to evaluate logical expressions based on your grammar rules. The project uses ANTLR4's visitor pattern for traversing the parse tree.

## 📚 Project Structure

```
antlr-ts-logic-evaluator/
├── grammar/
│   └── Logic.g4          # ANTLR4 grammar file
├── src/
│   ├── parser/           # Generated parser files
│   └── index.ts          # Main entry point
├── package.json
└── README.md
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👤 Author

**Jahid Hasan**

* Github: [@exitdump](https://github.com/exitdump)

## 🙏 Acknowledgments

- ANTLR4 team for the amazing parser generator
- TypeScript team for the excellent type system
- All contributors and users of this project

## 📮 Contact

For any questions or suggestions, please open an issue in the GitHub repository.
