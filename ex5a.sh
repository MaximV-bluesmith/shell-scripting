echo "What is your name?"
read USER_NAME
echo "Creating File: ${USER_NAME}_file"
touch ${USER_NAME}_file # If username has whitespace, will create multiple files
