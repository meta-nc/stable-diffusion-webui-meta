# remove outputs and replace with parent folder output
rm -rf outputs ;\
mkdir ../outputs ;\
mkdir ../outputs/${user_name} ;\
ln -sF   ../outputs/${user_name} outputs
