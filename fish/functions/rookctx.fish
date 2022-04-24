function rookctx -a env
  switch $env
    case staging
      kubectl config set current-context rook-staging
      gcloud config set core/project rook-money-staging
      terraform workspace select default

    case prod
      kubectl config set current-context rook-prod
      gcloud config set core/project rook-money
      terraform workspace select prod

    case '*'
      echo >&2 "No such environment: $env"
      echo >&2 "use 'staging' or 'prod'"
      return 1
  end
end
