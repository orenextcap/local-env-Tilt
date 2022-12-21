install-k3d:
		scripts/install-k3d.sh
pre-local-env:
		scripts/pre.sh

update-ecr-secret:
		scripts/createsecret.sh
run-tilt:
		scripts/run-tilt.sh