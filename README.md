# fibos-node-v5

```base
git clone https://github.com/fibos123/fibos-node-v5.git
cd fibos-node-v5
```

## CASE: 同步节点
```bash
cp .env.sample .env
sudo docker-compose up -d
```

## CASE: BP节点
```bash
cp .env.sample .env
vi .env
```
填写以下内容：
```
PRODUCER_ACCOUNT=eosio # BP 账户名
PRODUCER_PRIVATE_KEY=5KQ****************D3 # BP 私钥
PRODUCER_PUBLIC_KEY=FO6*****************CV # BP 公钥
```

```bash
sudo docker-compose up -d
```

监控等待区块同步完成
```bash
sudo docker-compose logs -f --tail 100
```

当区块同步完成后，使用以下命令进行开始生产
```
curl -X POST http://127.0.0.1:8080/v1/producer/resume -H "Content-Type: application/json" -d '{}'
```