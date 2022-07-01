package com.example.algamoney.api.service;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.algamoney.api.model.Lancamento;
import com.example.algamoney.api.model.Pessoa;
import com.example.algamoney.api.repository.LancamentoRepository;
import com.example.algamoney.api.repository.PessoaRepository;
import com.example.algamoney.api.service.exception.PessoaInexistenteOuInativaException;

@Service
public class LancamentoService {
	
	@Autowired
	private PessoaRepository pessoaRepository;
	
	@Autowired
	private LancamentoRepository lancamentoRepository;
	
	
	public Lancamento salvar(Lancamento lancamento) {
		Optional<Pessoa> pessoa = pessoaRepository.findById(lancamento.getPessoa().getCodigo());
		if (pessoa.isEmpty() || pessoa.get().isInativo()) {
			throw new PessoaInexistenteOuInativaException();
		}
		
		return lancamentoRepository.save(lancamento);
	}


	public Lancamento atualizar(Long codigo, @Valid Lancamento lancamento) {
		
		Lancamento lancamentoSalvo = buscarLancamentoExistente(codigo);
		
		//Se as pessoas dos lancamentos forem diferentes valida
		if (!lancamento.getPessoa().equals(lancamentoSalvo.getPessoa())) {
			validarPessoa(lancamento);
		}
		
		//copia lancamento para lancamentoSalvo menos o codigo
		BeanUtils.copyProperties(lancamento, lancamentoSalvo, "codigo");
		
		return lancamentoRepository.save(lancamentoSalvo);
	}


	private Lancamento buscarLancamentoExistente(Long codigo) {
		
	/* Código equivalente ao do return
	*	Optional<Lancamento> lancamentoSalvo = lancamentoRepository.findById(codigo);
	*	if (lancamentoSalvo.isEmpty()) {
	*		throw new IllegalArgumentException();
	*	}
	*/
		return lancamentoRepository.findById(codigo)
			.orElseThrow(() -> new IllegalArgumentException());
	}


	private void validarPessoa(Lancamento lancamento) {
		
		Optional<Pessoa> pessoa = null;
		
		//Ação se o codigo da pessoa existe
		if (lancamento.getPessoa().getCodigo() != null) {
			
			pessoa = pessoaRepository.findById(lancamento.getPessoa().getCodigo());
		}
		
		//Ação se a pessoa está vazia(empty) ou se a pessoa(optional) é inativa
		if (pessoa.isEmpty() || pessoa.get().isInativo()) {
			throw new PessoaInexistenteOuInativaException();
		}
		
	}
	

	
	
	
}
