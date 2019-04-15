virl: topology.virl
	virl up
ping: pyats_example_job.py default_testbed.yaml
	pyats run job pyats_example_job.py --testbed-file default_testbed.yaml
bgp: BGP_check_job.py default_testbed.yaml
	pyats run job BGP_check_job.py -t default_testbed.yaml --html-logs ./html_logs
clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +
