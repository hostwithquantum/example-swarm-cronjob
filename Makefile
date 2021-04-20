.PHONY: deploy
deploy:
	docker run -it --rm \
		-e QUANTUM_USER \
		-e QUANTUM_PASSWORD \
		-e QUANTUM_ENDPOINT \
		-v $(CURDIR):/work \
		-w /work \
		r.planetary-quantum/quantum-public/cli:2 \
		quantum-cli stack update \
			--create \
			--endpoint ${QUANTUM_ENDPOINT} \
			${QUANTUM_ENDPOINT}-swarm-cronjob
