import subprocess, time, os, json, signal, sys
D = os.path.dirname(os.path.abspath(__file__)); out = os.path.join(D, "kr"); py = sys.executable
cmd = [py, os.path.join(D, "..", "h1cert_drive2.py"), "13", "inf", "0.08", "3", "--diag", "5", "--out", out]
env = dict(os.environ, OMP_NUM_THREADS="1")
with open(os.path.join(D, "kr_log1.txt"), "w") as f: p = subprocess.Popen(cmd, stdout=f, stderr=subprocess.STDOUT, env=env)
time.sleep(28); p.send_signal(signal.SIGKILL); p.wait()
print("after kill:", sorted(os.listdir(out)))
with open(os.path.join(D, "kr_log2.txt"), "w") as f: subprocess.run(cmd, stdout=f, stderr=subprocess.STDOUT, env=env)
print("after resume:", sorted(os.listdir(out)))
print(open(os.path.join(D, "kr_log1.txt")).read()); print(open(os.path.join(D, "kr_log2.txt")).read())
print([json.load(open(os.path.join(out, f)))["status"] for f in sorted(os.listdir(out)) if f.endswith(".json")])
print(open(os.path.join(out, [f for f in os.listdir(out) if f.startswith("DONE")][0])).read())
