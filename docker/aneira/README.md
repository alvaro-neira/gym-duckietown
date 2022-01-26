~~~bash
$ /usr/bin/pip3 install --upgrade pip
$ git clone git@github.com:alvaro-neira/gym-duckietown.git
$ cd gym-duckietown
$ git checkout p36 && git pull origin p36
$ /usr/bin/pip3 install -e .
$ cd challenge...
$ /usr/bin/pip3 install -e .
$ cd duckietown_rl
$ /usr/bin/python3 -m scripts.train_cnn.py --seed 123
~~~
