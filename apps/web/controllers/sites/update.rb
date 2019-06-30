module Web
  module Controllers
    module Sites
      class Update
        include Web::Action

        expose :site

        params do
          required(:id).filled(:int?)
          required(:site).schema do
            required(:name).filled(:str?)
            required(:url).filled(:str?)
          end
        end

        def call(params)
          if params.valid?
            @site = SiteRepository.new.find(params[:id])
            SiteRepository.new.update(@site.id, params[:site])

            redirect_to routes.site_path(@site.id)
          else
            self.status = 422
          end
        end
      end
    end
  end
end
