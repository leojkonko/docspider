import { render, screen } from "@testing-library/react";
import { BrowserRouter as Router } from "react-router-dom";
import Home from "./Home";

describe("Home Component", () => {
  test("renderiza o título principal", () => {
    render(
      <Router>
        <Home />
      </Router>
    );

    // Verifica se o título está no documento
    const titleElement = screen.getByText(
      /Gerencie seus Documentos de Forma Simples e Segura/i
    );
    expect(titleElement).toBeInTheDocument();
  });

  test('renderiza o botão "Comece Agora" com o link correto', () => {
    render(
      <Router>
        <Home />
      </Router>
    );

    // Verifica se o botão está no documento
    const buttonElement = screen.getByRole("link", { name: /Comece Agora/i });
    expect(buttonElement).toBeInTheDocument();

    // Verifica se o link redireciona para a rota correta
    expect(buttonElement).toHaveAttribute("href", "/documents-list");
  });

  test("renderiza a seção de benefícios", () => {
    render(
      <Router>
        <Home />
      </Router>
    );

    // Verifica se o título da seção de benefícios está no documento
    const benefitsTitle = screen.getByText(
      /Por que escolher nossa plataforma?/i
    );
    expect(benefitsTitle).toBeInTheDocument();

    // Verifica se os benefícios estão sendo renderizados
    const benefit1 = screen.getByText(/Armazenamento Seguro/i);
    const benefit2 = screen.getByText(/Acesso Rápido/i);
    const benefit3 = screen.getByText(/Gestão Simples/i);

    expect(benefit1).toBeInTheDocument();
    expect(benefit2).toBeInTheDocument();
    expect(benefit3).toBeInTheDocument();
  });

  test("renderiza o vídeo de demonstração", () => {
    render(
      <Router>
        <Home />
      </Router>
    );

    // Verifica se o vídeo está no documento
    const videoElement = screen.getByTestId("demo-video"); // Usando data-testid
    expect(videoElement).toBeInTheDocument();

    // Verifica se o vídeo tem o source correto
    const sourceElement = screen
      .getByTestId("demo-video")
      .querySelector("source");
    expect(sourceElement).toHaveAttribute(
      "src",
      "https://www.w3schools.com/html/mov_bbb.mp4"
    );
  });
});
