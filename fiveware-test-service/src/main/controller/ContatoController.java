import java.util.HashMap;
import java.util.Map;

@Controller
public class ContatoController {

	@RequestMapping(value = "/contato", method = RequestMethod.GET)
	public ModelAndView cadastro() {
		
		ModelAndView mv = new ModelAndView("cadastro");
		
		Map<Integer,String> tipos = new HashMap<Integer,String>();
		tipos.put(1, "residencial");
		tipos.put(2, "comercial");
		tipos.put(3, "movel");
		
		ContatoBusiness contato = new ContatoBusiness();
		
		contato.setSexo('M');
		mv.addObject("cadastroContato", contato);
		mv.addObject("tipos", tipos);
		
		
		return mav;
	}
	
	@RequestMapping("/addContato")
	public @ResponseBody void adiciona(@RequestParam(value = "nome") String nome,
										 @RequestParam(value = "ativo") boolean favorito,
										 @RequestParam(value = "sexo") char sexo,
										 @RequestParam(value = "tipo") String tipo) {

		new ContatoManager().salvarContato(
								new ContatoBusiness(
								nome,
								ativo,
								tipo, 
								sexo));
		
	}
}
