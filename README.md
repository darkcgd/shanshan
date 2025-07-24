1. Geth在以太坊生态中的定位
Geth (Go Ethereum) 是以太坊官方三大客户端之一（另两个是Rust实现的Parity/Erigon和Java的Hyperledger Besu），其核心定位为：

全节点实现：完整存储区块链数据，验证所有区块和交易

网络基础设施：参与P2P网络广播交易/区块，提供RPC接口供DApp交互

智能合约执行引擎：运行EVM处理智能合约调用

执行层客户端(EL)：在合并后的PoS架构中负责交易执行

轻量级客户端：支持轻节点模式，仅同步区块头
