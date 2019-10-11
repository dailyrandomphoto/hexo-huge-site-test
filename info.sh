# show db.json and other files
ls -lh | grep db.json

echo
# show info form debug.log
grep -o -P '(Files loaded in|\d+ files generated in).*?\"' debug.log | sed 's/\\u001b\[36m\|\\u001b\[39m\"//g'

echo
# echo "theme"
grep -P "^theme:" _config.yml

echo
echo "package.json"
echo "  " `grep '"hexo": "' package.json`
echo "  " `grep '"hexo-util": "' node_modules/hexo/package.json`
echo "  " `grep '"warehouse": "' node_modules/hexo/package.json`

echo
echo "node_modules/"
echo "    hexo: " `grep '"version":' node_modules/hexo/package.json`
echo "    hexo-util: " `grep -s '"version":' node_modules/hexo-util/package.json node_modules/hexo/node_modules/hexo-util/package.json`
echo "    warehouse: " `grep -s '"version":' node_modules/warehouse/package.json node_modules/hexo/node_modules/warehouse/package.json`
