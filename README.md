1. Geth在以太坊生态中的定位
Geth (Go Ethereum) 是以太坊官方三大客户端之一（另两个是Rust实现的Parity/Erigon和Java的Hyperledger Besu），其核心定位为：
		
		全节点实现：完整存储区块链数据，验证所有区块和交易
		
		网络基础设施：参与P2P网络广播交易/区块，提供RPC接口供DApp交互
		
		智能合约执行引擎：运行EVM处理智能合约调用
		
		执行层客户端(EL)：在合并后的PoS架构中负责交易执行
		
		轻量级客户端：支持轻节点模式，仅同步区块头
<img width="591" height="524" alt="image" src="https://github.com/user-attachments/assets/9a15f6ad-d1f9-4ace-a214-df13ea1fa9d3" />


2. 核心模块交互关系解析
2.1 区块链同步协议（eth/62, eth/63）
   <img width="744" height="198" alt="image" src="https://github.com/user-attachments/assets/69d95809-8cf0-412d-aa91-5124f13030d7" />

   eth/62：

			基础区块头/体同步
			
			通过Header和Block Bodies消息请求数据
			
   eth/63 (Fast Sync)：
			
			先下载所有区块头（验证工作量证明）
			
			并行下载区块体及交易数据
			
			关键创新：同步最新状态时跳过历史交易执行，直接下载Merkle Patricia Trie的状态快照
   2.2 交易池管理与Gas机制

   <img width="721" height="559" alt="image" src="https://github.com/user-attachments/assets/a581af91-de49-4e11-97bb-507bf820990d" />
	 交易池结构：

			Pending Queue：符合当前Gas Price的交易（准备打包）
			
			Queued：未来可能生效的交易（nonce不连续或Gas不足）
			
			Gas机制工作流：
			
			用户发送交易时指定 Gas Price 和 Gas Limit
			
			交易池按 Gas Price 降序排序
			
			区块构建者选择交易组合最大化收益
			
			EVM执行按操作码消耗Gas，不足则回滚
			
			eth_miner模块动态调整最低Gas Price阈值

