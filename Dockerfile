FROM registry.access.redhat.com/ubi8/python-38

# Copy your application code
COPY . /tmp/src

# Install dependencies
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir powershift-cli[image]

# Set up the application
USER 1001
ENV S2I_SCRIPTS_PATH=/usr/libexec/s2i S2I_BASH_ENV=/opt/app-root/etc/scl_enable DISABLE_COLLECTSTATIC=1 DISABLE_MIGRATE=1
RUN /tmp/scripts/assemble
