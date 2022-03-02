# A Dockerfile is used to define how your code will be packaged. This includes
# your code, the base image and any additional dependencies you need.
FROM waggle/plugin-base:1.1.1-base

# Now we include the Python requirements.txt file and install any missing dependencies.
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY main.py .
ENTRYPOINT [ "python3", "main.py" ]
