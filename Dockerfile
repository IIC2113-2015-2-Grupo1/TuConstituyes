FROM rails:onbuild
RUN rake assets:precompile
ENV RAILS_ENV production
EXPOSE 3000
