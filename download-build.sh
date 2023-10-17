if [[ -z "${CPP4YOU_ACCESS_TOKEN}" ]]; then
  echo "CPP4YOU_ACCESS_TOKEN has not been set."
  exit 1
fi

(export GITHUB_API_TOKEN=$CPP4YOU_ACCESS_TOKEN && ./gh-get.sh Cpp4You CppLangNetBuilds latest build.zip)
echo "Unzipping build folder."
unzip -o build.zip -d build
