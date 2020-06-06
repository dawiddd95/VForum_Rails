module ApplicationHelper
   # Importujemy plugin redcarpet do modułu
   require 'redcarpet/render_strip'

   # Klasa łącząca redcarpet i coderay
   class CodeRayIfy < Redcarpet::Render::HTML
      def block_code(code, language)
         CodeRay.scan(code, language).div
      end
   end

   # Metoda, która będzie przetwarzać tekst na znacznik HTML
   # Jest ona naszym helperem
   def markdown(text)
      # Tworzymy obiekt klasy CodeRayIfy
      code_ray_ified = CodeRayIfy.new(:filter_html => true, :hard_wrap => true)
      
      options = {
         fenced_code_blocks: true,
         no_intra_emphasis: true,
         autolink: true,
         lax_html_blocks: true
      }
      
      # :: służy do dostępu do stałych w jakimś module lub klasie
      markdown_to_html = Redcarpet::Markdown.new(code_ray_ified, options)
      # Już właściwe prztworzenie tekstu na HTML
      markdown_to_html.render(text).html_safe
   end

   # Zamienia znacznik na text
   def strip_markdown(text)
      markdown_to_plain_text = Redcarpet::Markdown.new(Redcarpet::Render::StripDown)
      markdown_to_plain_text.render(text).html_safe
   end
end
