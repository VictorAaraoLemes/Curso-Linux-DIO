# Curso AWS - Projeto 1

---

## Infraestrutura como código: Script de criação de estrutura de usuários, diretórios e permissões

- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório;
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem;

### - Grupos

1. GP_ADM
2. GP_VEN
3. GP_SEC

### - Diretórios

| GP_ADM  | GP_VEN  | GP_SEC  |
| -------- | -------- | -------- |
| /publico | /publico | /publico |
| /adm     | /ven     | /sec     |

### - Usuários

| GP_ADM | GP_VEN    | GP_SEC  |
| ------- | ---------- | -------- |
| carlos  | debora     | victor   |
| maria   | carol      | junior   |
| joao\_  | roberta    | joaquim  |
