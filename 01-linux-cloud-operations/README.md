# 01 - Linux Cloud Operations

## Objetivo

Implementar e administrar um servidor Ubuntu Linux em ambiente
virtualizado, praticando atividades comuns de Linux Administration
e Cloud Operations.

## Ambiente

- Ubuntu Server 24.04.5 LTS
- Oracle VirtualBox
- OpenSSH
- Rede NAT
- Administração remota via PowerShell/SSH

## Implementação inicial

### Inventário do servidor

Script: `scripts/server-inventory.sh`

Coleta informações sobre:

- Sistema operacional e kernel
- Processador
- Memória RAM
- Armazenamento
- Interfaces e rotas de rede
- Estado do serviço SSH
- Estado do firewall UFW
- Serviços em execução

### Execução

```bash
chmod +x scripts/server-inventory.sh
./scripts/server-inventory.sh
```

## Próximas implementações

1. Firewall UFW e regras de acesso.
2. Usuários, grupos e permissões.
3. Administração de serviços com systemd.
4. Análise de logs e troubleshooting.
5. Scripts de manutenção e diagnóstico.

## Validação

Cada implementação será acompanhada de testes,
resultados observados e documentação técnica.

## Limites do laboratório

Ambiente local e experimental. Não utilizar credenciais,
dados ou configurações confidenciais de ambientes corporativos.
