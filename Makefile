BUCKETNAME=BUCKETBUCKETEXAMPLENAME
CLOUDFRONT_ID=XXXXXXXX
CODE_DIR=./public/
upload:
	aws s3 sync ${CODE_DIR} s3://${BUCKETNAME}/ --delete
	aws cloudfront create-invalidation --distribution-id ${CLOUDFRONT_ID} --paths /\*
