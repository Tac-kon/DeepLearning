FROM tensorflow/tensorflow:2.6.1-gpu-jupyter

# Disable authentication token
RUN jupyter notebook --generate-config
WORKDIR /root/.jupyter
RUN echo 'c.NotebookApp.allow_root = True' >> jupyter_notebook_config.py
RUN echo 'c.NotebookApp.ip = "0.0.0.0"' >> jupyter_notebook_config.py 
RUN echo 'c.NotebookApp.token = ""' >> jupyter_notebook_config.py 
RUN echo 'c.NotebookApp.port = 8888' >> jupyter_notebook_config.py 
RUN echo 'c.NotebookApp.open_browser = False' >> jupyter_notebook_config.py