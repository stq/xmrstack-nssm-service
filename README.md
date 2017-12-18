**XMR stack + nssm : Stable Monero AMD/Intel/GPU miner as windows service**

*Guide*

1. Choose your monero pool (google), for example xmrpool.eu (web site is https://web.xmrpool.eu/, you can read getting started here for info and also can check balance).
Don't use miners

2. Delete example configuration files: config.txt, cpu.txt

3. Run xmr-stak.exe, type in configuration entries.

Don't worry if misstyped something, you can later fix it in *.txt files (CPU, GPU and overall config)



*Performance Hints*

Open cpu.txt
Add or remove `{ "low_power_mode" : false, "no_prefetch" : true, "affine_to_cpu" : 0 },` entries according to overall pattern.
Number of entries should match number of CPU cores

If your machine is lagging/overheating, remove some threads. But usually its fine to use all threads, doesn't affect browsing/simple tasks much.

